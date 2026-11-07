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
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.opengles.shader.ShaderManager_Package;

package body org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package is

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
   procedure Initialize_Fields (This : in out ShaderManagerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ShaderManagerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShaderManagerFactory_Access is
      This : constant ShaderManagerFactory_Access := new ShaderManagerFactory;
   begin
      ShaderManagerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderManagerFactory_Access is
   begin
        return ShaderManagerFactory_Access (ShaderManagerFactory_Package.instance);
   end getInstance;

   function create (This : in out ShaderManagerFactory) return ShaderManager_Access is
   begin
        return ShaderManager_Package.getInstance;
   end create;

begin
   null;
   instance := ShaderManagerFactory_Package.Create;

end org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package;


