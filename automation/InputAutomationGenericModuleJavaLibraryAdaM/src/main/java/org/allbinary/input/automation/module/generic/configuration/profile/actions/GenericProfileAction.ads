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
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package is

   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package GenericProfileActionScript_Package renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type GenericProfileAction is tagged;
   type GenericProfileAction_Access is access all GenericProfileAction'Class;
   type GenericProfileAction_Access_Array is array (Natural range <>) of GenericProfileAction_Access;
   type GenericProfileAction_Access_Array_Access is access all GenericProfileAction_Access_Array;

   type GenericProfileAction is new DomNodeInterface with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      genericProfileActionScript : GenericProfileActionScript_Access;
      genericProfileActionJPanel : GenericProfileActionJPanel_Access;
   end record;

   procedure Initialize (This : in out GenericProfileAction'Class; genericProfileActionJPanel : GenericProfileActionJPanel_Access; node : Node_Access);
   function Create (genericProfileActionJPanel : GenericProfileActionJPanel_Access; node : Node_Access) return GenericProfileAction_Access;
   function getName (This : in out GenericProfileAction) return Unbounded_String;
   procedure getName (This : in out GenericProfileAction);
   procedure setName (This : in out GenericProfileAction; name : Unbounded_String);
   function toHashMap (This : in out GenericProfileAction) return HashMap_Access;
   procedure toHashMap (This : in out GenericProfileAction);
   function toXmlNode (This : in out GenericProfileAction; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out GenericProfileAction; document : Document_Access);
   function getGenericProfileActionScript (This : in out GenericProfileAction) return GenericProfileActionScript_Access;
   procedure getGenericProfileActionScript (This : in out GenericProfileAction);
   procedure setGenericProfileActionScript (This : in out GenericProfileAction; genericProfileActionScript : GenericProfileActionScript_Access);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;


