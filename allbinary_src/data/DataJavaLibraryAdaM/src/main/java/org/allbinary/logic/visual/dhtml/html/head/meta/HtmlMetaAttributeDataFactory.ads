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
limited with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References is
   type HtmlMetaAttributeDataFactory_Access is access all org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package.HtmlMetaAttributeDataFactory'Class;
   type HtmlMetaAttributeDataFactory_Access_Array is array (Natural range <>) of HtmlMetaAttributeDataFactory_Access;
   type HtmlMetaAttributeDataFactory_Access_Array_Access is access all HtmlMetaAttributeDataFactory_Access_Array;
   type HtmlMetaAttributeDataFactory_Access_Array_Access_Array is array (Natural range <>) of HtmlMetaAttributeDataFactory_Access_Array_Access;
   type HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access is access all HtmlMetaAttributeDataFactory_Access_Array_Access_Array;
   type HtmlMetaAttributeDataFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlMetaAttributeDataFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlMetaAttributeDataFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlMetaAttributeDataFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlMetaAttributeDataFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlMetaAttributeDataFactory_Access_Array_Access is (if Value /= null and then Value.all in HtmlMetaAttributeDataFactory_Access_Array_Object'Class then HtmlMetaAttributeDataFactory_Access_Array_Object'Class (Value.all).Value else null);
   type HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlMetaAttributeDataFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Object'Class then HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References;

with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References;

package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package is

   package Reference_Types is
   subtype HtmlMetaAttributeData_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access;
   use type HtmlMetaAttributeData_Access;
   subtype HtmlMetaAttributeData_Access_Array is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access_Array;
   use type HtmlMetaAttributeData_Access_Array;
   subtype HtmlMetaAttributeData_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access_Array_Access;
   use type HtmlMetaAttributeData_Access_Array_Access;
   subtype HtmlMetaAttributeData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access_Array_Access_Array;
   use type HtmlMetaAttributeData_Access_Array_Access_Array;
   subtype HtmlMetaAttributeData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access_Array_Access_Array_Access;
   use type HtmlMetaAttributeData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HtmlMetaAttributeDataFactory_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.HtmlMetaAttributeDataFactory_Access;
   function "=" (Left, Right : HtmlMetaAttributeDataFactory_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References."=";
   subtype HtmlMetaAttributeDataFactory_Access_Array is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.HtmlMetaAttributeDataFactory_Access_Array;
   function "=" (Left, Right : HtmlMetaAttributeDataFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References."=";
   subtype HtmlMetaAttributeDataFactory_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.HtmlMetaAttributeDataFactory_Access_Array_Access;
   function "=" (Left, Right : HtmlMetaAttributeDataFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References."=";
   function Java_Box (Value : HtmlMetaAttributeDataFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.Java_Box;
   function Java_Unbox_HtmlMetaAttributeDataFactory_Access_Array (Value : access Java_Object'Class) return HtmlMetaAttributeDataFactory_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.Java_Unbox_HtmlMetaAttributeDataFactory_Access_Array;
   subtype HtmlMetaAttributeDataFactory_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.HtmlMetaAttributeDataFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlMetaAttributeDataFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References."=";
   subtype HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References."=";
   function Java_Box (Value : HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.Java_Box;
   function Java_Unbox_HtmlMetaAttributeDataFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return HtmlMetaAttributeDataFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package_References.Java_Unbox_HtmlMetaAttributeDataFactory_Access_Array_Access_Array;

   type HtmlMetaAttributeDataFactory is new Java_Object with record
      NAME : HtmlMetaAttributeData_Access;
      HTTP_EQUIV : HtmlMetaAttributeData_Access;
      CONTENT : HtmlMetaAttributeData_Access;
   end record;
   instance : HtmlMetaAttributeDataFactory_Access;

   procedure Initialize (This : in out HtmlMetaAttributeDataFactory'Class);
   function Create return HtmlMetaAttributeDataFactory_Access;
   function getInstance return HtmlMetaAttributeDataFactory_Access;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;


