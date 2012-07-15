package br.com.cet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.cet.vo.EmpresaVo;

public class EmpresaDao extends BaseDao {
	
	
	public int getProximoCodigo(){
		
		return getProximoCodigo("empresa", "cd_empresa");
		
	}
	
	
	public EmpresaVo getEmpresaPeloCodigo(EmpresaVo empresaVo){
		return getEmpresa(empresaVo, 1);
	}
	
	private EmpresaVo getEmpresa(EmpresaVo empresaVo, int criterio){
		
		Connection connection = null;
		ResultSet rs = null;  
	    PreparedStatement ps = null;  
	    StringBuilder qry = new StringBuilder(); 
	    int i = 1;
	    
	    try {  
	    	
	    	connection = getConnection();  
	  
		    qry.append("SELECT rowid, cd_empresa, nm_empresa FROM empresa where cd_empresa = ?");
		    
		    ps = connection.prepareStatement(qry.toString());  
		    
		    ps.setInt(i++, Integer.parseInt(empresaVo.getCodigoEmpresa()));
		    
		    rs = ps.executeQuery();  
		    
		    empresaVo = null;
		    
		    if (rs.next()) {  
		    	empresaVo = new EmpresaVo();
		    	
		    	empresaVo.setRowid(rs.getString("rowid"));
		    	empresaVo.setCodigoEmpresa(rs.getString("cd_empresa"));
		    	empresaVo.setRazaoSocial(rs.getString("nm_empresa"));
		    }  
		    
	    }catch (Exception e) {  
	        e.printStackTrace();
	    }finally {
	    	releaseResouces(connection, ps, rs);
	    } 
	    
	    return empresaVo;
	}
	
	
	public List<EmpresaVo> getListaEmpresas(){
		
		Connection connection = null;
		ResultSet rs = null;  
	    PreparedStatement ps = null;  
	    StringBuilder qry = new StringBuilder(); 
	    List<EmpresaVo> empresasList = null;
	    EmpresaVo empresaVo = null;
	    
	    try {  
	    	
	    	connection = getConnection();  
	  
		    qry.append("SELECT rowid, cd_empresa, nm_empresa FROM empresa");
		    
		    ps = connection.prepareStatement(qry.toString());  
		    rs = ps.executeQuery(qry.toString());  
		  
		    empresasList = new ArrayList<EmpresaVo>();
		    
		    while (rs.next()) {  
		    	empresaVo = new EmpresaVo();
		    	empresaVo.setRowid(rs.getString("rowid"));
		    	empresaVo.setCodigoEmpresa(rs.getString("cd_empresa"));
		        empresaVo.setRazaoSocial(rs.getString("nm_empresa"));
		    	empresasList.add(empresaVo);
		    }  
		    
	    }catch (Exception e) {  
	        e.printStackTrace();
	    }finally {
	    	releaseResouces(connection, ps, rs);
	    } 
	    
	    return empresasList;
	}
	
	
	public void insertEmpresas(EmpresaVo empresaVo) throws Exception{
		
		Connection connection = null;
		PreparedStatement  ps = null;  
	    StringBuilder qry = new StringBuilder(); 
	    int i = 1;
	    
	    try {  
	    	
	    	connection = getConnection();  
	  
		    qry.append(" INSERT INTO empresa ");
		    qry.append(" ( rowid, ");
		    qry.append("  cd_empresa, ");
		    qry.append(" nm_empresa ) ");
		    qry.append(getValues(qry));
		    
		    ps = connection.prepareStatement(qry.toString());  
		    
		    ps.setString(i++, getNovaSimulacaoRowid());
		    ps.setInt(i++, Integer.parseInt(empresaVo.getCodigoEmpresa()));
		    ps.setString(i++, empresaVo.getRazaoSocial());
		    
		    ps.executeUpdate();
		    
	    }catch (SQLException e) {  
	        e.printStackTrace();
	    }finally {
	    	releaseResouces(connection, ps); 
	    } 
	}

	public void updateEmpresas(EmpresaVo empresaVo) throws Exception{
		
		Connection connection = null;
		PreparedStatement  ps = null;  
		StringBuilder qry = new StringBuilder(); 
		int i = 1;
		
		try {  
			
			connection = getConnection();  
			
			qry.append(" UPDATE empresa set ");
			qry.append(" nm_empresa = ? ");
			qry.append(" WHERE cd_empresa = ? ");
			
			ps = connection.prepareStatement(qry.toString());  
			ps.setString(i++, empresaVo.getRazaoSocial());
			ps.setInt(i++, Integer.parseInt(empresaVo.getCodigoEmpresa()));
			
			ps.execute();
			
		}catch (SQLException e) {  
			e.printStackTrace();
		}finally {
			releaseResouces(connection, ps); 
		} 
	}
}
