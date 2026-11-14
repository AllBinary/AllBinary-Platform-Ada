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
limited with org.allbinary.input.automation.module.DefaultListModelHelper_Package;
package org.allbinary.input.automation.module.DefaultListModelHelper_Package_References is
   type DefaultListModelHelper_Access is access all org.allbinary.input.automation.module.DefaultListModelHelper_Package.DefaultListModelHelper'Class;
   type DefaultListModelHelper_Access_Array is array (Natural range <>) of DefaultListModelHelper_Access;
   type DefaultListModelHelper_Access_Array_Access is access all DefaultListModelHelper_Access_Array;
   type DefaultListModelHelper_Access_Array_Access_Array is array (Natural range <>) of DefaultListModelHelper_Access_Array_Access;
   type DefaultListModelHelper_Access_Array_Access_Array_Access is access all DefaultListModelHelper_Access_Array_Access_Array;
   type DefaultListModelHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DefaultListModelHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : DefaultListModelHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DefaultListModelHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DefaultListModelHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DefaultListModelHelper_Access_Array_Access is (if Value /= null and then Value.all in DefaultListModelHelper_Access_Array_Object'Class then DefaultListModelHelper_Access_Array_Object'Class (Value.all).Value else null);
   type DefaultListModelHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DefaultListModelHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DefaultListModelHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DefaultListModelHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DefaultListModelHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DefaultListModelHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DefaultListModelHelper_Access_Array_Access_Array_Object'Class then DefaultListModelHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.DefaultListModelHelper_Package_References;

with org.allbinary.input.automation.module.DefaultListModelHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.input.automation.module.DefaultListModel_Package;
with org.allbinary.input.automation.module.DefaultListModel_Package_References;
limited with org.allbinary.input.automation.module.ListModel_Package;
with org.allbinary.input.automation.module.ListModel_Package_References;

package org.allbinary.input.automation.module.DefaultListModelHelper_Package is

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
   subtype DefaultListModel_Access is org.allbinary.input.automation.module.DefaultListModel_Package_References.DefaultListModel_Access;
   use type DefaultListModel_Access;
   subtype DefaultListModel_Access_Array is org.allbinary.input.automation.module.DefaultListModel_Package_References.DefaultListModel_Access_Array;
   use type DefaultListModel_Access_Array;
   subtype DefaultListModel_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModel_Package_References.DefaultListModel_Access_Array_Access;
   use type DefaultListModel_Access_Array_Access;
   subtype DefaultListModel_Access_Array_Access_Array is org.allbinary.input.automation.module.DefaultListModel_Package_References.DefaultListModel_Access_Array_Access_Array;
   use type DefaultListModel_Access_Array_Access_Array;
   subtype DefaultListModel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModel_Package_References.DefaultListModel_Access_Array_Access_Array_Access;
   use type DefaultListModel_Access_Array_Access_Array_Access;
   subtype ListModel_Access is org.allbinary.input.automation.module.ListModel_Package_References.ListModel_Access;
   use type ListModel_Access;
   subtype ListModel_Access_Array is org.allbinary.input.automation.module.ListModel_Package_References.ListModel_Access_Array;
   use type ListModel_Access_Array;
   subtype ListModel_Access_Array_Access is org.allbinary.input.automation.module.ListModel_Package_References.ListModel_Access_Array_Access;
   use type ListModel_Access_Array_Access;
   subtype ListModel_Access_Array_Access_Array is org.allbinary.input.automation.module.ListModel_Package_References.ListModel_Access_Array_Access_Array;
   use type ListModel_Access_Array_Access_Array;
   subtype ListModel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.ListModel_Package_References.ListModel_Access_Array_Access_Array_Access;
   use type ListModel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DefaultListModelHelper_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access;
   function "=" (Left, Right : DefaultListModelHelper_Access) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   subtype DefaultListModelHelper_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array;
   function "=" (Left, Right : DefaultListModelHelper_Access_Array) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   subtype DefaultListModelHelper_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access;
   function "=" (Left, Right : DefaultListModelHelper_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   function Java_Box (Value : DefaultListModelHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.Java_Box;
   function Java_Unbox_DefaultListModelHelper_Access_Array (Value : access Java_Object'Class) return DefaultListModelHelper_Access_Array_Access renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.Java_Unbox_DefaultListModelHelper_Access_Array;
   subtype DefaultListModelHelper_Access_Array_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array;
   function "=" (Left, Right : DefaultListModelHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   subtype DefaultListModelHelper_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DefaultListModelHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   function Java_Box (Value : DefaultListModelHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.Java_Box;
   function Java_Unbox_DefaultListModelHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return DefaultListModelHelper_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.Java_Unbox_DefaultListModelHelper_Access_Array_Access_Array;

   type DefaultListModelHelper is new Java_Object with record
      defaultListModel : DefaultListModel_Access;
      vector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out DefaultListModelHelper'Class);
   function Create return DefaultListModelHelper_Access;
   procedure initDefaultModelList (This : in out DefaultListModelHelper);
   function getListModel (This : in out DefaultListModelHelper) return ListModel_Access;
   procedure add (This : in out DefaultListModelHelper; string_Id : Unbounded_String);
   procedure remove (This : in out DefaultListModelHelper; string_Id : Unbounded_String);

end org.allbinary.input.automation.module.DefaultListModelHelper_Package;


