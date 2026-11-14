-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

with AllBinary_Java;
limited with org.allbinary.DisposalUtil_Package;
package org.allbinary.DisposalUtil_Package_References is
   type DisposalUtil_Access is access all org.allbinary.DisposalUtil_Package.DisposalUtil'Class;
   type DisposalUtil_Access_Array is array (Natural range <>) of DisposalUtil_Access;
   type DisposalUtil_Access_Array_Access is access all DisposalUtil_Access_Array;
   type DisposalUtil_Access_Array_Access_Array is array (Natural range <>) of DisposalUtil_Access_Array_Access;
   type DisposalUtil_Access_Array_Access_Array_Access is access all DisposalUtil_Access_Array_Access_Array;
   type DisposalUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisposalUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : DisposalUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisposalUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisposalUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisposalUtil_Access_Array_Access is (if Value /= null and then Value.all in DisposalUtil_Access_Array_Object'Class then DisposalUtil_Access_Array_Object'Class (Value.all).Value else null);
   type DisposalUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisposalUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DisposalUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisposalUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisposalUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisposalUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DisposalUtil_Access_Array_Access_Array_Object'Class then DisposalUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.DisposalUtil_Package_References;

with org.allbinary.DisposalUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.eclipse.swt.graphics.Resource_Package;
with org.eclipse.swt.graphics.Resource_Package_References;

package org.allbinary.DisposalUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Resource_Package renames Standard.org.eclipse.swt.graphics.Resource_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype Resource_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access;
   use type Resource_Access;
   subtype Resource_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array;
   use type Resource_Access_Array;
   subtype Resource_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access;
   use type Resource_Access_Array_Access;
   subtype Resource_Access_Array_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array;
   use type Resource_Access_Array_Access_Array;
   subtype Resource_Access_Array_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array_Access;
   use type Resource_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DisposalUtil_Access is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access;
   function "=" (Left, Right : DisposalUtil_Access) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   subtype DisposalUtil_Access_Array is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access_Array;
   function "=" (Left, Right : DisposalUtil_Access_Array) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   subtype DisposalUtil_Access_Array_Access is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access_Array_Access;
   function "=" (Left, Right : DisposalUtil_Access_Array_Access) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   function Java_Box (Value : DisposalUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.DisposalUtil_Package_References.Java_Box;
   function Java_Unbox_DisposalUtil_Access_Array (Value : access Java_Object'Class) return DisposalUtil_Access_Array_Access renames org.allbinary.DisposalUtil_Package_References.Java_Unbox_DisposalUtil_Access_Array;
   subtype DisposalUtil_Access_Array_Access_Array is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DisposalUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   subtype DisposalUtil_Access_Array_Access_Array_Access is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisposalUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   function Java_Box (Value : DisposalUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.DisposalUtil_Package_References.Java_Box;
   function Java_Unbox_DisposalUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return DisposalUtil_Access_Array_Access_Array_Access renames org.allbinary.DisposalUtil_Package_References.Java_Unbox_DisposalUtil_Access_Array_Access_Array;

   type DisposalUtil is new Java_Object with null record;
   instance : DisposalUtil_Access;

   procedure Initialize (This : in out DisposalUtil'Class);
   function Create return DisposalUtil_Access;
   function getInstance return DisposalUtil_Access;
   procedure disposeImage (This : in out DisposalUtil; image_Param : access Image_Package.Image'Class);
   procedure disposeResource (This : in out DisposalUtil; resource_Param : access Resource_Package.Resource'Class);

end org.allbinary.DisposalUtil_Package;


