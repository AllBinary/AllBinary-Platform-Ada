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
limited with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
package org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References is
   type StoreThemeCategoryInterface_Access is access all org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class;
   type StoreThemeCategoryInterface_Access_Array is array (Natural range <>) of StoreThemeCategoryInterface_Access;
   type StoreThemeCategoryInterface_Access_Array_Access is access all StoreThemeCategoryInterface_Access_Array;
   type StoreThemeCategoryInterface_Access_Array_Access_Array is array (Natural range <>) of StoreThemeCategoryInterface_Access_Array_Access;
   type StoreThemeCategoryInterface_Access_Array_Access_Array_Access is access all StoreThemeCategoryInterface_Access_Array_Access_Array;
   type StoreThemeCategoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreThemeCategoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreThemeCategoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreThemeCategoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreThemeCategoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreThemeCategoryInterface_Access_Array_Access is (if Value /= null and then Value.all in StoreThemeCategoryInterface_Access_Array_Object'Class then StoreThemeCategoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type StoreThemeCategoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreThemeCategoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreThemeCategoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreThemeCategoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreThemeCategoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreThemeCategoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreThemeCategoryInterface_Access_Array_Access_Array_Object'Class then StoreThemeCategoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References;

with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References;
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
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
limited with org.allbinary.logic.visual.theme.ThemeValidation_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package_References;
with org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;

package org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package ThemeValidation_Package renames Standard.org.allbinary.logic.visual.theme.ThemeValidation_Package;
   package CompositeTransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;
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
   subtype ThemeValidation_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access;
   use type ThemeValidation_Access;
   subtype ThemeValidation_Access_Array is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array;
   use type ThemeValidation_Access_Array;
   subtype ThemeValidation_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access;
   use type ThemeValidation_Access_Array_Access;
   subtype ThemeValidation_Access_Array_Access_Array is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access_Array;
   use type ThemeValidation_Access_Array_Access_Array;
   subtype ThemeValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access_Array_Access;
   use type ThemeValidation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type StoreThemeCategoryInterface is interface and CategoryInterface and TableMappingInterface and ValidationInterface and CompositeTransformInfoInterface;
   subtype StoreThemeCategoryInterface_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   subtype StoreThemeCategoryInterface_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   subtype StoreThemeCategoryInterface_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   function Java_Box (Value : StoreThemeCategoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.Java_Box;
   function Java_Unbox_StoreThemeCategoryInterface_Access_Array (Value : access Java_Object'Class) return StoreThemeCategoryInterface_Access_Array_Access renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.Java_Unbox_StoreThemeCategoryInterface_Access_Array;
   subtype StoreThemeCategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   subtype StoreThemeCategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   function Java_Box (Value : StoreThemeCategoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.Java_Box;
   function Java_Unbox_StoreThemeCategoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreThemeCategoryInterface_Access_Array_Access_Array_Access renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.Java_Unbox_StoreThemeCategoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_StoreThemeCategoryInterface (Value : StoreThemeCategoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure addTheme (This : in out StoreThemeCategoryInterface; themeValidation_Param : access ThemeValidation_Package.ThemeValidation'Class) is abstract;
   function getThemes (This : in out StoreThemeCategoryInterface) return BasicArrayList_Access is abstract;

end org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;


