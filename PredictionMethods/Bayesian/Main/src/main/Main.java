
package main;


import java.lang.Math;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;


public class Main {
	
	public static double alpha=0.005,beta=11.1;
	public static int sizeX=10,M=3,N=10;
	public static  double [][]phiX=new double[M+1][1];
	public static  double [][]phiXT=new double[1][M+1];
	public  static double [][]prodPhi=new double[M+1][M+1];
	//public static  double [][]sumPhi=new double[M+1][M+1];
	public  static double [][]prodBetaSum=new double[M+1][M+1];
	public static double [][]identityMatrix=new double[M+1][M+1];
	public static double [][]alphaI=new double[M+1][M+1];
	public static double [][]sInv=new double[M+1][M+1];
	public static double [][]S=new double[M+1][M+1];
	public static  double []x={1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0};
	public  static double SpowX,prediction,xin=11.0,sd,d;
	/*-------------------------------------------------------------------------------------*/

	/*-------------------------------------------------------------------------------------*/
	public static  double detCalc(double m[][], double size)
	{
		float s = 1;
		double[][] m2=new double[M + 1][M + 1];
		double det = 0;
		int i, j, m1, n, c;
		if (size == 1)
		{
			return (m[0][0]);
		}
		else
		{
			det = 0;
			for (c = 0; c<size; c++)
			{
				m1 = 0;
				n = 0;
				for (i = 0; i<size; i++)
				{
					for (j = 0; j<size; j++)
					{
						m2[i][j] = 0;
						if (i != 0 && j != c)
						{
							m2[m1][n] = m[i][j];
							if (n<(size - 2))
								n++;
							else
							{
								n = 0;
								m1++;
							}
						}
					}
				}
				det = det + s * (m[0][c] * detCalc(m2, size - 1));
				s = -1 * s;
			}
		}

		return (det);
	}
	/*-------------------------------------------------------------------------------------*/
	
	public static void prodPhixPhixT(double phiX[][], double phiXT[][], double multiphiphiT[][])
	{
		double sum = 0;
		for (int i = 0; i < (M + 1); i++)
		{
			for (int j = 0; j < (M + 1); j++)
			{
				for (int k = 0; k < 1; k++)
				{
					sum = sum + phiX[i][k] * phiXT[k][j];
				}
				multiphiphiT[i][j] = sum;
				
				sum = 0;
			}
			
		}
	}
	/*-------------------------------------------------------------------------------------*/
	public static void cofCalc(double m[][], double size, double S[][])
	{
		double[][] mc=new double[M + 1][M + 1]; 
		double[][] cofactor=new double[M + 1][M + 1];
		int p, q, m1, n, i, j;
		for (q = 0; q<size; q++)
		{
			for (p = 0; p<size; p++)
			{
				m1 = 0;
				n = 0;
				for (i = 0; i<size; i++)
				{
					for (j = 0; j<size; j++)
					{
						if (i != q && j != p)
						{
							mc[m1][n] = m[i][j];
							if (n<(size - 2))
								n++;
							else
							{
								n = 0;
								m1++;
							}
						}
					}
				}
				cofactor[q][p] = Math.pow(-1, q + p) * detCalc(mc, size - 1);
			}
		}
		transCalc(m, cofactor, size, S);
	}
	/*-------------------------------------------------------------------------------------*/
	public static void transCalc(double m[][], double cofactor[][], double size, double S[][])
	{
		int i, j;
		double[][] tran=new double[M + 1][M + 1];
		double[][] inv=new double[M + 1][M + 1];
		double d;

		for (i = 0; i<size; i++)
		{
			for (j = 0; j<size; j++)
			{
				tran[i][j] = cofactor[j][i];
			}
		}
		d = detCalc(m, size);
		for (i = 0; i<size; i++)
		{
			for (j = 0; j<size; j++)
			{
				inv[i][j] = tran[i][j] / d;
				S[i][j] = inv[i][j];
			}
		}
		

	}
	/*-------------------------------------------------------------------------------------*/
	public static  double sPowXCalc(double beta, double x, double S[][])
	{
		double[][] temp=new double[1][M + 1];
		double[][] value=new double[1][1];
		double[][] phiX=new double[M + 1][1];
		double[][] phiXT=new double[1][M + 1];
		phixCalc(x, phiX);
		phixtCalc(x, phiXT);
		
		double sum = 0;
		for (int i = 0; i < (1); i++)
		{
			for (int j = 0; j < (M + 1); j++)
			{
				for (int k = 0; k <(M + 1); k++)
				{
					sum = sum + phiXT[i][k] * S[k][j];
				}
				temp[i][j] = sum;
				
				sum = 0;
			}

		}	sum = 0;
		for (int i = 0; i < (1); i++)
		{
			for (int j = 0; j < (1); j++)
			{
				for (int k = 0; k <(M + 1); k++)
				{
					sum = sum + temp[i][k] * phiX[k][j];
				}
				value[i][j] = sum;
				sum = 0;
			}
			
		}

		return ((1 / beta + value[0][0]));
		
	}
	
	/*-------------------------------------------------------------------------------------*/
	public static void prodPhixT(double phiX[][], double t, double mul[][])
	{
		for (int i = 0; i < M + 1; i++)
		{
			mul[i][0] = phiX[i][0] * t;
		}
	}
	
/*********************************Main***********************************************************/	
	public static void main(String[] args)
	{
	
	//DBConnect connecttoserver= new DBConnect(); 
	//connecttoserver.getData();
		
		Connection con = null;
		Statement st = null;
		ResultSet rs;
		
	try{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			//con= DriverManager.getConnection("jdbc:mysql://localhost:3306/group12","root","");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test_schema?user=root&password=root");
			st=con.createStatement();
                        String sql2="Delete from bayesian";
                st.executeUpdate(sql2);
			
		}catch(Exception ex){
			System.out.println("Error :"+ex);
		}
                
	for(int s=0;s<20;s++)
	{
	String sql="select Close from organizationhistory where OrganizationID=? LIMIT 10";
	try{
		int i=0;
		double []t1 = new double[10];
		double []t=new double[10];
		//double []t = new double[10];
		//String []stockid={"AAPL","YHOO","GOOG","INTC","CSCO"};
		int []stockid={694653,99624,18241,284784,22144,662744,667226,13606,663137,666236,666601,20562,21553,358464,655697,657729,419344,29312,656142,662848};
		PreparedStatement preps=(PreparedStatement) con.prepareStatement(sql);
		
		//preps.setString(1,stockid[s] );
		preps.setInt(1, stockid[s]);
		preps.execute();
		rs=st.executeQuery("select Close from organizationhistory where OrganizationID='stockid[s]' LIMIT 10");
		rs=preps.getResultSet();
		System.out.println("Prices");
		while(rs.next())
		{
			double value= rs.getDouble("Close");
		
			//System.out.println(value);
			t1[i]=value;
			i++;
		}
		//N=i;
		//System.out.println(i);
		for(int q=0;q<t1.length;q++)
		{
			t[q]=t1[t1.length-1-q];
		}
		
		
		for(int j=0;j<i;j++)
		{
			System.out.println(t[j]);
		}
		
	double prt=mean(t);
	System.out.println("Predicted value is"+prt);
	//int stock=1;

	String sql1="Insert INTO bayesian (OrganizationID,PredictedValue) VALUES ("+stockid[s] +"," +prt+")";
	st.executeUpdate(sql1);
	//stock++;
	//rs=st.executeQuery("select VALUE from stocks where STOCK='GOOG' LIMIT 10");
	//rs=preps.getResultSet();
	/*int i1=0;
	System.out.println("Prices");
	while(rs.next())
	{
		double value1= rs.getDouble("VALUE");
	
		//System.out.println(value);
		t1[i1]=value1;
		i1++;
	}
	N=i;
	//System.out.println(i);
	
	
	for(int j1=0;j1<i;j1++)
	{
		System.out.println(t1[j1]);
	}
	
double prt1=mean(t1);
System.out.println("Predicted value is"+prt1);*/
	}
	catch(Exception ex){
			System.out.println(ex);
		}
	
	}	//}
	
	
	}
    /*-------------------------------------------------------------------------------------*/
		
 public static  double mean(double[] t)
 {
	 double [][]sumPhi=new double[M+1][M+1];
	// sumPhi[][]={0};
    for (int j = 0; j < N; j++)
	{

		phixCalc(x[j], phiX);
		phixtCalc(x[j], phiXT);
		prodPhixPhixT(phiX, phiXT, prodPhi);
		for (int k = 0; k < M + 1; k++)
		{
			for (int j1 = 0; j1 < M + 1; j1++)
			{
				sumPhi[k][j1] = sumPhi[k][j1] + prodPhi[k][j1];
			}
		}
	}
    /*-------------------------------------------------------------------------------------*/
    for (int i1 = 0; i1 < M + 1; i1++)
	{
		for (int j = 0; j < M + 1; j++)
		{
			prodBetaSum[i1][j] = beta*sumPhi[i1][j];
		}
	}
    /*-------------------------------------------------------------------------------------*/
    for (int i1 = 0; i1 < M + 1; i1++)
	{
		for (int j = 0; j < M + 1; j++)
		{
			if (i1 == j)
			{
				identityMatrix[i1][j] = 1;
				
			}
			else
			{
				identityMatrix[i1][j] = 0;
				
			}
		}
		
	}
    /*-------------------------------------------------------------------------------------*/
    for (int i1 = 0; i1 < M + 1; i1++)
	{
		for (int j = 0; j < M + 1; j++)
		{
			alphaI[i1][j] = alpha*identityMatrix[i1][j];
		}
	}
    /*-------------------------------------------------------------------------------------*/
    for (int i1 = 0; i1 < M + 1; i1++)
	{
		for (int j = 0; j < M + 1; j++)
		{
			sInv[i1][j] = alphaI[i1][j] + prodBetaSum[i1][j];
		}
	}
    /*-------------------------------------------------------------------------------------*/
   
	
	d = detCalc(sInv, (M + 1));
	cofCalc(sInv, (M + 1), S);
	SpowX = sPowXCalc(beta, xin, S);
	prediction = mxCalc(beta, xin, S, x, t);
	//sd = Math.sqrt(SpowX);
	return prediction;
 }
	//System.out.println("The predicted value:");
	//System.out.print(prediction);
	//}
	
	//catch(Exception ex){
		//System.out.println(ex);
	//}
	//}
//}
//}

	 /*--------------------------------------------------------------------------------------*/
		public static void phixCalc(double x, double phiX[][])
		{
			for (int j = 0; j < M + 1; j++)
			{
				phiX[j][0] = Math.pow(x, j);
				
			}
		}
		/*---------------------------------------------------------------------------------------*/
		public static  void phixtCalc(double x, double phiXT[][])
		{
			for (int k = 0; k < M + 1; k++)
			{
				
				phiXT[0][k] = Math.pow(x, k);
				
			}
		}
		/*-------------------------------------------------------------------------------------*/
		public static  double mxCalc(double beta, double xin, double S[][], double x[], double t[])
		{
			double[][] tn =new double[M + 1][1];
			double[][] phiX=new double[M + 1][1];
			double[][] phiXT=new double[1][M + 1];
			//double[][] doubletemp =new double[1][M + 1];
			double[][] value=new double[1][1];
			double[][] multiphitn=new double [M + 1][1];
			double[][] temp=new double[M+1][M+1];
			phixtCalc(xin, phiXT);


			for (int i = 0; i < N; i++)
			{
				phixCalc(x[i], phiX);
				prodPhixT(phiX, t[i], multiphitn);
				for (int j = 0; j < M + 1; j++)
				{
					tn[j][0] = tn[j][0] + multiphitn[j][0];
				}

			}
			
			double sum = 0;
			for (int i = 0; i < (1); i++)
			{
				for (int j = 0; j < (M + 1); j++)
				{
					for (int k = 0; k <(M + 1); k++)
					{
						sum = sum + phiXT[i][k] * S[k][j];
					}
					temp[i][j] = sum;
					
					sum = 0;
				}
			}

			sum = 0;
			for (int i = 0; i < (1); i++)
			{
				for (int j = 0; j < (1); j++)
				{
					for (int k = 0; k <(M + 1); k++)
					{
						sum = sum + temp[i][k] * tn[k][j];
					}
					value[i][j] = sum;
					
					sum = 0;
				}
				
			}
			
			return (beta*value[0][0]);
		}
	
}