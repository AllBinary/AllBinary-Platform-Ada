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
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Element_Package; use org.w3c.dom.Element_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.properties.CategoryPropertiesView_Package is

   package CategoryData_Package renames org.allbinary.business.category.CategoryData_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Element_Package renames org.w3c.dom.Element_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type CategoryPropertiesView is tagged;
   type CategoryPropertiesView_Access is access all CategoryPropertiesView'Class;
   type CategoryPropertiesView_Access_Array is array (Natural range <>) of CategoryPropertiesView_Access;
   type CategoryPropertiesView_Access_Array_Access is access all CategoryPropertiesView_Access_Array;

   type CategoryPropertiesView is new DomNodeInterface with record
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
   end record;

   procedure Initialize (This : in out CategoryPropertiesView'Class; categoryPropertiesInterface : CategoryPropertiesInterface_Access);
   function Create (categoryPropertiesInterface : CategoryPropertiesInterface_Access) return CategoryPropertiesView_Access;
   function toXmlNode (This : in out CategoryPropertiesView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out CategoryPropertiesView; document : Document_Access);

end org.allbinary.business.category.properties.CategoryPropertiesView_Package;


