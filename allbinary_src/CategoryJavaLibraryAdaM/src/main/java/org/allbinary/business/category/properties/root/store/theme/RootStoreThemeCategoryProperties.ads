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
limited with org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package;
package org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References is
   type RootStoreThemeCategoryProperties_Access is access all org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package.RootStoreThemeCategoryProperties'Class;
   type RootStoreThemeCategoryProperties_Access_Array is array (Natural range <>) of RootStoreThemeCategoryProperties_Access;
   type RootStoreThemeCategoryProperties_Access_Array_Access is access all RootStoreThemeCategoryProperties_Access_Array;
   type RootStoreThemeCategoryProperties_Access_Array_Access_Array is array (Natural range <>) of RootStoreThemeCategoryProperties_Access_Array_Access;
   type RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access is access all RootStoreThemeCategoryProperties_Access_Array_Access_Array;
   type RootStoreThemeCategoryProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootStoreThemeCategoryProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : RootStoreThemeCategoryProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootStoreThemeCategoryProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootStoreThemeCategoryProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootStoreThemeCategoryProperties_Access_Array_Access is (if Value /= null and then Value.all in RootStoreThemeCategoryProperties_Access_Array_Object'Class then RootStoreThemeCategoryProperties_Access_Array_Object'Class (Value.all).Value else null);
   type RootStoreThemeCategoryProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootStoreThemeCategoryProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootStoreThemeCategoryProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RootStoreThemeCategoryProperties_Access_Array_Access_Array_Object'Class then RootStoreThemeCategoryProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References;

with org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package; use org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package RootStoreCategoryProperties_Package renames Standard.org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RootStoreThemeCategoryProperties_Access is org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.RootStoreThemeCategoryProperties_Access;
   function "=" (Left, Right : RootStoreThemeCategoryProperties_Access) return Boolean renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References."=";
   subtype RootStoreThemeCategoryProperties_Access_Array is org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.RootStoreThemeCategoryProperties_Access_Array;
   function "=" (Left, Right : RootStoreThemeCategoryProperties_Access_Array) return Boolean renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References."=";
   subtype RootStoreThemeCategoryProperties_Access_Array_Access is org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.RootStoreThemeCategoryProperties_Access_Array_Access;
   function "=" (Left, Right : RootStoreThemeCategoryProperties_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References."=";
   function Java_Box (Value : RootStoreThemeCategoryProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.Java_Box;
   function Java_Unbox_RootStoreThemeCategoryProperties_Access_Array (Value : access Java_Object'Class) return RootStoreThemeCategoryProperties_Access_Array_Access renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.Java_Unbox_RootStoreThemeCategoryProperties_Access_Array;
   subtype RootStoreThemeCategoryProperties_Access_Array_Access_Array is org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.RootStoreThemeCategoryProperties_Access_Array_Access_Array;
   function "=" (Left, Right : RootStoreThemeCategoryProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References."=";
   subtype RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References."=";
   function Java_Box (Value : RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.Java_Box;
   function Java_Unbox_RootStoreThemeCategoryProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return RootStoreThemeCategoryProperties_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package_References.Java_Unbox_RootStoreThemeCategoryProperties_Access_Array_Access_Array;

   type RootStoreThemeCategoryProperties is new RootStoreCategoryProperties with null record;

   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return RootStoreThemeCategoryProperties_Access;
   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; abPath_Param : access AbPath_Package.AbPath'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; abPath_Param : access AbPath_Package.AbPath'Class) return RootStoreThemeCategoryProperties_Access;
   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class) return RootStoreThemeCategoryProperties_Access;
   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return RootStoreThemeCategoryProperties_Access;
   procedure initPath (This : in out RootStoreThemeCategoryProperties);

end org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package;


