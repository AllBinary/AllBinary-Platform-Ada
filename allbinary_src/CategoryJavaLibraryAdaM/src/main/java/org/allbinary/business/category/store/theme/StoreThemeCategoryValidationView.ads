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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryView_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryView_Package;

package org.allbinary.business.category.store.theme.StoreThemeCategoryValidationView_Package is

   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreThemeCategoryValidationView is tagged;
   type StoreThemeCategoryValidationView_Access is access all StoreThemeCategoryValidationView'Class;
   type StoreThemeCategoryValidationView_Access_Array is array (Natural range <>) of StoreThemeCategoryValidationView_Access;
   type StoreThemeCategoryValidationView_Access_Array_Access is access all StoreThemeCategoryValidationView_Access_Array;

   type StoreThemeCategoryValidationView is new StoreThemeCategoryView and ValidationInterface with null record;

   procedure Initialize (This : in out StoreThemeCategoryValidationView'Class; categoryInterface : StoreThemeCategoryInterface_Access);
   function Create (categoryInterface : StoreThemeCategoryInterface_Access) return StoreThemeCategoryValidationView_Access;
   function isValid (This : in out StoreThemeCategoryValidationView) return Boolean;
   procedure isValid (This : in out StoreThemeCategoryValidationView);
   function toValidationInfoDoc (This : in out StoreThemeCategoryValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out StoreThemeCategoryValidationView);
   function toValidationInfoNode (This : in out StoreThemeCategoryValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out StoreThemeCategoryValidationView; document : Document_Access);
   function validationInfo (This : in out StoreThemeCategoryValidationView) return Unbounded_String;
   procedure validationInfo (This : in out StoreThemeCategoryValidationView);

end org.allbinary.business.category.store.theme.StoreThemeCategoryValidationView_Package;


