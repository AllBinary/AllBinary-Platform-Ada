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
--  with java.util.Arrays_Package; use java.util.Arrays_Package;
with org.allbinary.business.category.CategoryView_Package; use org.allbinary.business.category.CategoryView_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package; use org.allbinary.logic.visual.theme.ThemeValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.store.theme.StoreThemeCategoryView_Package is

   package CategoryView_Package renames Standard.org.allbinary.business.category.CategoryView_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ThemeValidation_Package renames Standard.org.allbinary.logic.visual.theme.ThemeValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreThemeCategoryView is tagged;
   type StoreThemeCategoryView_Access is access all StoreThemeCategoryView'Class;
   type StoreThemeCategoryView_Access_Array is array (Natural range <>) of StoreThemeCategoryView_Access;
   type StoreThemeCategoryView_Access_Array_Access is access all StoreThemeCategoryView_Access_Array;

   type StoreThemeCategoryView is new CategoryView and DomNodeInterface with null record;

   procedure Initialize (This : in out StoreThemeCategoryView'Class; categoryInterface : StoreThemeCategoryInterface_Access);
   function Create (categoryInterface : StoreThemeCategoryInterface_Access) return StoreThemeCategoryView_Access;
   function toXmlNode (This : in out StoreThemeCategoryView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out StoreThemeCategoryView; document : Document_Access);

end org.allbinary.business.category.store.theme.StoreThemeCategoryView_Package;


