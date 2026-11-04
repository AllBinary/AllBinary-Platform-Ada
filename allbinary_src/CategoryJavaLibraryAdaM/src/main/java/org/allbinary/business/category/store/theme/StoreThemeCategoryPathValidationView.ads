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

limited with org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package;
package org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References is
   type StoreThemeCategoryPathValidationView_Access is access all org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package.StoreThemeCategoryPathValidationView'Class;
   type StoreThemeCategoryPathValidationView_Access_Array is array (Natural range <>) of StoreThemeCategoryPathValidationView_Access;
   type StoreThemeCategoryPathValidationView_Access_Array_Access is access all StoreThemeCategoryPathValidationView_Access_Array;
   type StoreThemeCategoryPathValidationView_Access_Array_Access_Array is array (Natural range <>) of StoreThemeCategoryPathValidationView_Access_Array_Access;
   type StoreThemeCategoryPathValidationView_Access_Array_Access_Array_Access is access all StoreThemeCategoryPathValidationView_Access_Array_Access_Array;
end org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References;

with org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.category.store.theme.StoreThemeCategoryPathView_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryPathView_Package;
limited with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References;

package org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package is

   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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
   subtype StoreThemeCategoryInterface_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access;
   use type StoreThemeCategoryInterface_Access;
   subtype StoreThemeCategoryInterface_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array;
   use type StoreThemeCategoryInterface_Access_Array;
   subtype StoreThemeCategoryInterface_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access;
   use type StoreThemeCategoryInterface_Access_Array_Access;
   subtype StoreThemeCategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access_Array;
   use type StoreThemeCategoryInterface_Access_Array_Access_Array;
   subtype StoreThemeCategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access_Array_Access;
   use type StoreThemeCategoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreThemeCategoryPathValidationView_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References.StoreThemeCategoryPathValidationView_Access;
   function "=" (Left, Right : StoreThemeCategoryPathValidationView_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References."=";
   subtype StoreThemeCategoryPathValidationView_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References.StoreThemeCategoryPathValidationView_Access_Array;
   function "=" (Left, Right : StoreThemeCategoryPathValidationView_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References."=";
   subtype StoreThemeCategoryPathValidationView_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References.StoreThemeCategoryPathValidationView_Access_Array_Access;
   function "=" (Left, Right : StoreThemeCategoryPathValidationView_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References."=";
   subtype StoreThemeCategoryPathValidationView_Access_Array_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References.StoreThemeCategoryPathValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : StoreThemeCategoryPathValidationView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References."=";
   subtype StoreThemeCategoryPathValidationView_Access_Array_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References.StoreThemeCategoryPathValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreThemeCategoryPathValidationView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package_References."=";

   type StoreThemeCategoryPathValidationView is new StoreThemeCategoryPathView and ValidationInterface with null record;

   procedure Initialize (This : in out StoreThemeCategoryPathValidationView'Class; categoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class);
   function Create (categoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class) return StoreThemeCategoryPathValidationView_Access;
   function isValid (This : in out StoreThemeCategoryPathValidationView) return Boolean;
   function toValidationInfoDoc (This : in out StoreThemeCategoryPathValidationView) return Document_Access;
   function toValidationInfoNode (This : in out StoreThemeCategoryPathValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out StoreThemeCategoryPathValidationView; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out StoreThemeCategoryPathValidationView) return Unbounded_String;

end org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package;


