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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesView_Package; use org.allbinary.business.category.properties.CategoryPropertiesView_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.anyType.InterfaceUtil_Package; use org.allbinary.logic.java.anyType.InterfaceUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.CategoryView_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package CategoryPropertiesInterface_Package renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package CategoryPropertiesView_Package renames org.allbinary.business.category.properties.CategoryPropertiesView_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package InterfaceUtil_Package renames org.allbinary.logic.java.anyType.InterfaceUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type CategoryView is tagged;
   type CategoryView_Access is access all CategoryView'Class;
   type CategoryView_Access_Array is array (Natural range <>) of CategoryView_Access;
   type CategoryView_Access_Array_Access is access all CategoryView_Access_Array;

   type CategoryView is new DomNodeInterface with record
      logUtil : LogUtil_Access;
      categoryInterface : CategoryInterface_Access;
   end record;

   procedure Initialize (This : in out CategoryView'Class; categoryInterface : CategoryInterface_Access);
   function Create (categoryInterface : CategoryInterface_Access) return CategoryView_Access;
   function getCategoryInterface (This : in out CategoryView) return CategoryInterface_Access;
   procedure getCategoryInterface (This : in out CategoryView);
   function toXmlNode (This : in out CategoryView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out CategoryView; document : Document_Access);

end org.allbinary.business.category.CategoryView_Package;


