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
limited with org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package;
package org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References is
   type StylesValidationFactory_Access is access all org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package.StylesValidationFactory'Class;
   type StylesValidationFactory_Access_Array is array (Natural range <>) of StylesValidationFactory_Access;
   type StylesValidationFactory_Access_Array_Access is access all StylesValidationFactory_Access_Array;
   type StylesValidationFactory_Access_Array_Access_Array is array (Natural range <>) of StylesValidationFactory_Access_Array_Access;
   type StylesValidationFactory_Access_Array_Access_Array_Access is access all StylesValidationFactory_Access_Array_Access_Array;
   type StylesValidationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StylesValidationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : StylesValidationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StylesValidationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StylesValidationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StylesValidationFactory_Access_Array_Access is (if Value /= null and then Value.all in StylesValidationFactory_Access_Array_Object'Class then StylesValidationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type StylesValidationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StylesValidationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StylesValidationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StylesValidationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StylesValidationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StylesValidationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StylesValidationFactory_Access_Array_Access_Array_Object'Class then StylesValidationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References;

with org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StylesValidationFactory_Access is org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.StylesValidationFactory_Access;
   function "=" (Left, Right : StylesValidationFactory_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References."=";
   subtype StylesValidationFactory_Access_Array is org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.StylesValidationFactory_Access_Array;
   function "=" (Left, Right : StylesValidationFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References."=";
   subtype StylesValidationFactory_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.StylesValidationFactory_Access_Array_Access;
   function "=" (Left, Right : StylesValidationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References."=";
   function Java_Box (Value : StylesValidationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.Java_Box;
   function Java_Unbox_StylesValidationFactory_Access_Array (Value : access Java_Object'Class) return StylesValidationFactory_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.Java_Unbox_StylesValidationFactory_Access_Array;
   subtype StylesValidationFactory_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.StylesValidationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StylesValidationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References."=";
   subtype StylesValidationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.StylesValidationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StylesValidationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References."=";
   function Java_Box (Value : StylesValidationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.Java_Box;
   function Java_Unbox_StylesValidationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return StylesValidationFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package_References.Java_Unbox_StylesValidationFactory_Access_Array_Access_Array;

   type StylesValidationFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StylesValidationFactory_Access;

   procedure Initialize (This : in out StylesValidationFactory'Class);
   function Create return StylesValidationFactory_Access;
   function getInstance return StylesValidationFactory_Access;
   function getInstance (This : in out StylesValidationFactory; document_Param : access Document_Package.Document'Class) return BasicArrayList_Access;
   procedure getInstance (This : in out StylesValidationFactory; document_Param : access Document_Package.Document'Class);
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return BasicArrayList_Access;
   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package;


