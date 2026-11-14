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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.template.XslData_Package;
package org.allbinary.logic.visual.transform.template.XslData_Package_References is
   type XslData_Access is access all org.allbinary.logic.visual.transform.template.XslData_Package.XslData'Class;
   type XslData_Access_Array is array (Natural range <>) of XslData_Access;
   type XslData_Access_Array_Access is access all XslData_Access_Array;
   type XslData_Access_Array_Access_Array is array (Natural range <>) of XslData_Access_Array_Access;
   type XslData_Access_Array_Access_Array_Access is access all XslData_Access_Array_Access_Array;
   type XslData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XslData_Access_Array_Access;
   end record;
   function Java_Box (Value : XslData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XslData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XslData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XslData_Access_Array_Access is (if Value /= null and then Value.all in XslData_Access_Array_Object'Class then XslData_Access_Array_Object'Class (Value.all).Value else null);
   type XslData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XslData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : XslData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XslData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XslData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XslData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in XslData_Access_Array_Access_Array_Object'Class then XslData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.XslData_Package_References;

with org.allbinary.logic.visual.transform.template.XslData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.template.XslData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype XslData_Access is org.allbinary.logic.visual.transform.template.XslData_Package_References.XslData_Access;
   function "=" (Left, Right : XslData_Access) return Boolean renames org.allbinary.logic.visual.transform.template.XslData_Package_References."=";
   subtype XslData_Access_Array is org.allbinary.logic.visual.transform.template.XslData_Package_References.XslData_Access_Array;
   function "=" (Left, Right : XslData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.XslData_Package_References."=";
   subtype XslData_Access_Array_Access is org.allbinary.logic.visual.transform.template.XslData_Package_References.XslData_Access_Array_Access;
   function "=" (Left, Right : XslData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.XslData_Package_References."=";
   function Java_Box (Value : XslData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.XslData_Package_References.Java_Box;
   function Java_Unbox_XslData_Access_Array (Value : access Java_Object'Class) return XslData_Access_Array_Access renames org.allbinary.logic.visual.transform.template.XslData_Package_References.Java_Unbox_XslData_Access_Array;
   subtype XslData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.XslData_Package_References.XslData_Access_Array_Access_Array;
   function "=" (Left, Right : XslData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.XslData_Package_References."=";
   subtype XslData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.XslData_Package_References.XslData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XslData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.XslData_Package_References."=";
   function Java_Box (Value : XslData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.XslData_Package_References.Java_Box;
   function Java_Unbox_XslData_Access_Array_Access_Array (Value : access Java_Object'Class) return XslData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.XslData_Package_References.Java_Unbox_XslData_Access_Array_Access_Array;

   type XslData is new Java_Object with record
      NAME : Unbounded_String;
      ROOT_IMPORT_URI : Unbounded_String;
   end record;
   instance : XslData_Access;

   procedure Initialize (This : in out XslData'Class);
   function Create return XslData_Access;
   function getInstance return XslData_Access;

end org.allbinary.logic.visual.transform.template.XslData_Package;


