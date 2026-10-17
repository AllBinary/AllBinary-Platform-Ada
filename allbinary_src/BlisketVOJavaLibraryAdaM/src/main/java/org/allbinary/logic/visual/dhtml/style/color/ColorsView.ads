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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.dhtml.style.color.ColorData_Package; use org.allbinary.logic.visual.dhtml.style.color.ColorData_Package;
with org.allbinary.logic.visual.dhtml.style.color.ColorsData_Package; use org.allbinary.logic.visual.dhtml.style.color.ColorsData_Package;

package org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ColorsView is tagged;
   type ColorsView_Access is access all ColorsView'Class;
   type ColorsView_Access_Array is array (Natural range <>) of ColorsView_Access;
   type ColorsView_Access_Array_Access is access all ColorsView_Access_Array;

   type ColorsView is new DomNodeInterface with record
      commonPhoneStrings : CommonPhoneStrings_Access;
      HEXRADIX : Integer;
      MAX : Integer;
      delta_Id : Integer;
   end record;

   procedure Initialize (This : in out ColorsView'Class);
   function Create return ColorsView_Access;
   function getColorNode (This : in out ColorsView; document_Param : access Document'Class; redIndex : Integer; greenIndex : Integer; blueIndex : Integer) return Node_Access;
   procedure getColorNode (This : in out ColorsView; document_Param : access Document'Class; redIndex : Integer; greenIndex : Integer; blueIndex : Integer);
   function toXmlNode (This : in out ColorsView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ColorsView; document_Param : access Document'Class);

end org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package;


