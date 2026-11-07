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


with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.khronos.egl.EGLConfig_Package;
with javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
with org.allbinary.graphics.opengles.shader.ShaderUpdater_Package;

package body org.allbinary.graphics.opengles.shader.SimpleCompositeShaderUpdater_Package is

   procedure Initialize_Fields (This : in out SimpleCompositeShaderUpdater'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SimpleCompositeShaderUpdater'Class; uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access) is
   begin
        CompositeShaderUpdater_Package.Initialize (This, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray);
   end Initialize;

   function Create (uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access) return SimpleCompositeShaderUpdater_Access is
      This : constant SimpleCompositeShaderUpdater_Access := new SimpleCompositeShaderUpdater;
   begin
      SimpleCompositeShaderUpdater_Package.Initialize (This.all, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray);
      return This;
   end Create;

end org.allbinary.graphics.opengles.shader.SimpleCompositeShaderUpdater_Package;


