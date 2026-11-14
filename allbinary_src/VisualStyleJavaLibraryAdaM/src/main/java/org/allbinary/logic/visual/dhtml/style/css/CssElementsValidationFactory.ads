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
limited with org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;
package org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References is
   type CssElementsValidationFactory_Access is access all org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package.CssElementsValidationFactory'Class;
   type CssElementsValidationFactory_Access_Array is array (Natural range <>) of CssElementsValidationFactory_Access;
   type CssElementsValidationFactory_Access_Array_Access is access all CssElementsValidationFactory_Access_Array;
   type CssElementsValidationFactory_Access_Array_Access_Array is array (Natural range <>) of CssElementsValidationFactory_Access_Array_Access;
   type CssElementsValidationFactory_Access_Array_Access_Array_Access is access all CssElementsValidationFactory_Access_Array_Access_Array;
   type CssElementsValidationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CssElementsValidationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CssElementsValidationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CssElementsValidationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CssElementsValidationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CssElementsValidationFactory_Access_Array_Access is (if Value /= null and then Value.all in CssElementsValidationFactory_Access_Array_Object'Class then CssElementsValidationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CssElementsValidationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CssElementsValidationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CssElementsValidationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CssElementsValidationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CssElementsValidationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CssElementsValidationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CssElementsValidationFactory_Access_Array_Access_Array_Object'Class then CssElementsValidationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CssElementsValidationFactory_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.CssElementsValidationFactory_Access;
   function "=" (Left, Right : CssElementsValidationFactory_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References."=";
   subtype CssElementsValidationFactory_Access_Array is org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.CssElementsValidationFactory_Access_Array;
   function "=" (Left, Right : CssElementsValidationFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References."=";
   subtype CssElementsValidationFactory_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.CssElementsValidationFactory_Access_Array_Access;
   function "=" (Left, Right : CssElementsValidationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References."=";
   function Java_Box (Value : CssElementsValidationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.Java_Box;
   function Java_Unbox_CssElementsValidationFactory_Access_Array (Value : access Java_Object'Class) return CssElementsValidationFactory_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.Java_Unbox_CssElementsValidationFactory_Access_Array;
   subtype CssElementsValidationFactory_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.CssElementsValidationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CssElementsValidationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References."=";
   subtype CssElementsValidationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.CssElementsValidationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CssElementsValidationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References."=";
   function Java_Box (Value : CssElementsValidationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.Java_Box;
   function Java_Unbox_CssElementsValidationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CssElementsValidationFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package_References.Java_Unbox_CssElementsValidationFactory_Access_Array_Access_Array;

   type CssElementsValidationFactory is new Java_Object with null record;

   procedure Initialize (This : in out CssElementsValidationFactory'Class);
   function Create return CssElementsValidationFactory_Access;
   function getInstance (cssElementStyleNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getInstance (cssElementStyleNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return BasicArrayList_Access;
   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;


