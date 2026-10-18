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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package body org.allbinary.util.BasicArrayListD_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   procedure Initialize_Fields (This : in out BasicArrayListD'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicArrayListD'Class) is
   begin
        BasicArrayListS_Package.Initialize (This, 7);
   end Initialize;

   function Create return BasicArrayListD_Access is
      This : constant BasicArrayListD_Access := new BasicArrayListD;
   begin
      BasicArrayListD_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.util.BasicArrayListD_Package;


