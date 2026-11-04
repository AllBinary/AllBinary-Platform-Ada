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


with org.allbinary.graphics.opengles.shader.ShaderManager_Package; use org.allbinary.graphics.opengles.shader.ShaderManager_Package;
with org.allbinary.graphics.opengles.shader.ShaderManager_Package_References;
with org.allbinary.graphics.opengles.shader.ShaderManager_Package;

package body org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package is

   subtype ShaderManager_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access;
   function "=" (Left, Right : ShaderManager_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   subtype ShaderManager_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array;
   function "=" (Left, Right : ShaderManager_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   subtype ShaderManager_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access;
   function "=" (Left, Right : ShaderManager_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   subtype ShaderManager_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderManager_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   subtype ShaderManager_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   procedure Initialize_Fields (This : in out LoadedShaderManager'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LoadedShaderManager'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LoadedShaderManager_Access is
      This : constant LoadedShaderManager_Access := new LoadedShaderManager;
   begin
      LoadedShaderManager_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderManager_Access is
   begin
        return ShaderManager_Access (LoadedShaderManager_Package.instance);
   end getInstance;

begin
   null;
   instance := ShaderManager_Package.Create (-(1), -(1));

end org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package;


