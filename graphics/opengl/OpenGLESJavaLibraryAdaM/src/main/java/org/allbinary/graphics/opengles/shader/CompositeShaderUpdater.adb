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


package body org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package is

   procedure Initialize_Fields (This : in out CompositeShaderUpdater'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.shaderStrings := ShaderStrings_Package.getInstance;
      
      
      
      
      
      
   end Initialize_Fields;


   function getInstance return CompositeShaderUpdater_Access is
   begin
        return CompositeShaderUpdater_Package.instanceC;
   end getInstance;

   procedure Initialize (This : in out CompositeShaderUpdater'Class; uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access) is
   begin
      ShaderUpdater_Package.Initialize (This);
      Initialize_Fields (This);
        This.uniformBlockArray := uniformBlockArray;
        This.uniformBlockHandleArray := new Integer_Array'(0 .. (This.uniformBlockArray'Length) - 1 => 0);
        This.uniformArray := uniformArray;
        This.uniformHandleArray := new Integer_Array'(0 .. (This.uniformArray'Length) - 1 => 0);
        This.attributeArray := attributeArray;
        This.attributeHandleArray := attributeHandleArray;
   end Initialize;

   function Create (uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access) return CompositeShaderUpdater_Access is
      This : constant CompositeShaderUpdater_Access := new CompositeShaderUpdater;
   begin
      CompositeShaderUpdater_Package.Initialize (This.all, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray);
      return This;
   end Create;

   procedure onSurfaceCreated (This : in out CompositeShaderUpdater; gl : GL10_Access; eglConfig : EGLConfig_Access; programHandle : Integer) is
   begin
        null;
   end onSurfaceCreated;

   procedure onSurfaceDestroyed (This : in out CompositeShaderUpdater; gl : GL10_Access) is
   begin
        null;
   end onSurfaceDestroyed;

begin
   null;
   instanceC := CompositeShaderUpdater_Package.Create (StringUtil_Package.getInstance.getArrayInstance, StringUtil_Package.getInstance.getArrayInstance, StringUtil_Package.getInstance.getArrayInstance, NullUtil_Package.getInstance.NULL_INT_ARRAY);

end org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;


