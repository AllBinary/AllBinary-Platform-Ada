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
limited with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References is
   type TitleData_Access is access all org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package.TitleData'Class;
   type TitleData_Access_Array is array (Natural range <>) of TitleData_Access;
   type TitleData_Access_Array_Access is access all TitleData_Access_Array;
   type TitleData_Access_Array_Access_Array is array (Natural range <>) of TitleData_Access_Array_Access;
   type TitleData_Access_Array_Access_Array_Access is access all TitleData_Access_Array_Access_Array;
   type TitleData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TitleData_Access_Array_Access;
   end record;
   function Java_Box (Value : TitleData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TitleData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TitleData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TitleData_Access_Array_Access is (if Value /= null and then Value.all in TitleData_Access_Array_Object'Class then TitleData_Access_Array_Object'Class (Value.all).Value else null);
   type TitleData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TitleData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TitleData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TitleData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TitleData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TitleData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TitleData_Access_Array_Access_Array_Object'Class then TitleData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TitleData_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.TitleData_Access;
   function "=" (Left, Right : TitleData_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References."=";
   subtype TitleData_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.TitleData_Access_Array;
   function "=" (Left, Right : TitleData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References."=";
   subtype TitleData_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.TitleData_Access_Array_Access;
   function "=" (Left, Right : TitleData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References."=";
   function Java_Box (Value : TitleData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.Java_Box;
   function Java_Unbox_TitleData_Access_Array (Value : access Java_Object'Class) return TitleData_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.Java_Unbox_TitleData_Access_Array;
   subtype TitleData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.TitleData_Access_Array_Access_Array;
   function "=" (Left, Right : TitleData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References."=";
   subtype TitleData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.TitleData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References."=";
   function Java_Box (Value : TitleData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.Java_Box;
   function Java_Unbox_TitleData_Access_Array_Access_Array (Value : access Java_Object'Class) return TitleData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package_References.Java_Unbox_TitleData_Access_Array_Access_Array;

   type TitleData is new Java_Object with record
      NAME : Unbounded_String;
      TEXT : Unbounded_String;
      VIEWNAMEKEY : Unbounded_String;
      MAXLEN : Integer;
   end record;
   instance : TitleData_Access;

   procedure Initialize (This : in out TitleData'Class);
   function Create return TitleData_Access;
   function getInstance return TitleData_Access;

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;


