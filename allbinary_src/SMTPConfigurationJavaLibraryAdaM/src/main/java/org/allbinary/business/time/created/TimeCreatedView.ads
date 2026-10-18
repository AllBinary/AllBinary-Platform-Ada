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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.time.created.TimeCreated_Package; use org.allbinary.business.time.created.TimeCreated_Package;

package org.allbinary.business.time.created.TimeCreatedView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TimeCreatedView is tagged;
   type TimeCreatedView_Access is access all TimeCreatedView'Class;
   type TimeCreatedView_Access_Array is array (Natural range <>) of TimeCreatedView_Access;
   type TimeCreatedView_Access_Array_Access is access all TimeCreatedView_Access_Array;
   type TimeCreatedView_Access_Array_Access_Array is array (Natural range <>) of TimeCreatedView_Access_Array_Access;
   type TimeCreatedView_Access_Array_Access_Array_Access is access all TimeCreatedView_Access_Array_Access_Array;

   type TimeCreatedView is new Java_Object and DomNodeInterface with record
      timeCreated : TimeCreated_Access;
   end record;

   procedure Initialize (This : in out TimeCreatedView'Class; timeCreated_Param : access TimeCreated_Package.TimeCreated'Class);
   function Create (timeCreated_Param : access TimeCreated_Package.TimeCreated'Class) return TimeCreatedView_Access;
   procedure Initialize (This : in out TimeCreatedView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return TimeCreatedView_Access;
   function toXmlNode (This : in out TimeCreatedView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out TimeCreatedView; document_Param : access Document_Package.Document'Class);
   function getTimeCreated (This : in out TimeCreatedView) return TimeCreated_Access;
   procedure setTimeCreated (This : in out TimeCreatedView; timeCreated_Param : access TimeCreated_Package.TimeCreated'Class);

end org.allbinary.business.time.created.TimeCreatedView_Package;


