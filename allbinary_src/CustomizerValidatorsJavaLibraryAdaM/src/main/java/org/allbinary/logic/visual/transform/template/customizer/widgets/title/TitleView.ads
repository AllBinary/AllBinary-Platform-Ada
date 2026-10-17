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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;

package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package is

   package DomData_Package renames Standard.org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TitleView is tagged;
   type TitleView_Access is access all TitleView'Class;
   type TitleView_Access_Array is array (Natural range <>) of TitleView_Access;
   type TitleView_Access_Array_Access is access all TitleView_Access_Array;

   type TitleView is new DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      title : Unbounded_String;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out TitleView'Class);
   function Create return TitleView_Access;
   function getTitle (This : in out TitleView) return Unbounded_String;
   procedure getFormData (This : in out TitleView; hashMap : HashMap_Access);
   function toHashMap (This : in out TitleView) return HashMap_Access;
   function toXmlNode (This : in out TitleView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out TitleView; document : Document_Access);

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package;


