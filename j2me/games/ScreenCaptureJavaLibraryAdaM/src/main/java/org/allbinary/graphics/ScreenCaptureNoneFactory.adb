--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with org.allbinary.graphics.ScreenCapture_Package; use org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.graphics.ScreenCapture_Package_References;
with org.allbinary.graphics.ScreenCapture_Package;

package body org.allbinary.graphics.ScreenCaptureNoneFactory_Package is

   subtype ScreenCapture_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access;
   function "=" (Left, Right : ScreenCapture_Access) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   subtype ScreenCapture_Access_Array is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array;
   function "=" (Left, Right : ScreenCapture_Access_Array) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   subtype ScreenCapture_Access_Array_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access;
   function "=" (Left, Right : ScreenCapture_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   subtype ScreenCapture_Access_Array_Access_Array is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenCapture_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   subtype ScreenCapture_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenCapture_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   procedure Initialize_Fields (This : in out ScreenCaptureNoneFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ScreenCaptureNoneFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScreenCaptureNoneFactory_Access is
      This : constant ScreenCaptureNoneFactory_Access := new ScreenCaptureNoneFactory;
   begin
      ScreenCaptureNoneFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ScreenCapture_Access is
   begin
        return ScreenCaptureNoneFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := ScreenCapture_Package.Create;

end org.allbinary.graphics.ScreenCaptureNoneFactory_Package;


