-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.shader.ShaderManager_Package is

   procedure Initialize_Fields (This : in out ShaderManager'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.LOAD_SHADER := To_Unbounded_String ("loadShader");
      This.U_U_VERSION_U_U := To_Unbounded_String ("__VERSION__");
      
      
   end Initialize_Fields;


   function getInstance return ShaderManager_Access is
   begin
        return ShaderManager_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ShaderManager'Class; GL_VERTEX_SHADER : Integer; GL_FRAGMENT_SHADER : Integer) is
   begin
      Initialize_Fields (This);
        This.GL_VERTEX_SHADER := GL_VERTEX_SHADER;
        This.GL_FRAGMENT_SHADER := GL_FRAGMENT_SHADER;
   end Initialize;

   function Create (GL_VERTEX_SHADER : Integer; GL_FRAGMENT_SHADER : Integer) return ShaderManager_Access is
      This : constant ShaderManager_Access := new ShaderManager;
   begin
      ShaderManager_Package.Initialize (This.all, GL_VERTEX_SHADER, GL_FRAGMENT_SHADER);
      return This;
   end Create;

   function load (This : in out ShaderManager; gl : GL10_Access; resource : Unbounded_String; shaderAsStringArray : Unbounded_String_Array_Access; shaderType : Integer) return Integer is
   begin
        return -(1);
   end load;

   function loadShader (This : in out ShaderManager; gl : GL10_Access; resource : Unbounded_String; stringList : BasicArrayList_Access; shaderType : Integer) return Integer is
   begin
        return -(1);
   end loadShader;

   procedure load (This : in out ShaderManager; gl : GL10_Access; resource : Unbounded_String; shaderAsStringArray : Unbounded_String_Array_Access; shaderType : Integer) is
      Java_Result : constant Integer := ShaderManager'Class (This).load (gl, resource, shaderAsStringArray, shaderType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end load;

   procedure loadShader (This : in out ShaderManager; gl : GL10_Access; resource : Unbounded_String; stringList : BasicArrayList_Access; shaderType : Integer) is
      Java_Result : constant Integer := ShaderManager'Class (This).loadShader (gl, resource, stringList, shaderType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadShader;

begin
   null;
   instance := ShaderManager_Package.Create (-(1), -(1));

end org.allbinary.graphics.opengles.shader.ShaderManager_Package;


