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
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.store.theme.StoreThemeCategoriesView_Package is

   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreThemeCategoriesView is tagged;
   type StoreThemeCategoriesView_Access is access all StoreThemeCategoriesView'Class;
   type StoreThemeCategoriesView_Access_Array is array (Natural range <>) of StoreThemeCategoriesView_Access;
   type StoreThemeCategoriesView_Access_Array_Access is access all StoreThemeCategoriesView_Access_Array;

   type StoreThemeCategoriesView is new DomNodeInterface with record
      categoryInterface : StoreThemeCategoryInterface_Access;
   end record;

   procedure Initialize (This : in out StoreThemeCategoriesView'Class; categoryInterface : StoreThemeCategoryInterface_Access);
   function Create (categoryInterface : StoreThemeCategoryInterface_Access) return StoreThemeCategoriesView_Access;
   function toXmlNode (This : in out StoreThemeCategoriesView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out StoreThemeCategoriesView; document : Document_Access);

end org.allbinary.business.category.store.theme.StoreThemeCategoriesView_Package;


