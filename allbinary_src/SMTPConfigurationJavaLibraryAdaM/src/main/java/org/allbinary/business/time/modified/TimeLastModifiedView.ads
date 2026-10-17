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
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.time.modified.TimeLastModifiedView_Package is

   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type TimeLastModifiedView is tagged;
   type TimeLastModifiedView_Access is access all TimeLastModifiedView'Class;
   type TimeLastModifiedView_Access_Array is array (Natural range <>) of TimeLastModifiedView_Access;
   type TimeLastModifiedView_Access_Array_Access is access all TimeLastModifiedView_Access_Array;

   type TimeLastModifiedView is new DomNodeInterface with record
      timeLastModified : TimeLastModified_Access;
   end record;

   procedure Initialize (This : in out TimeLastModifiedView'Class; timeLastModified : TimeLastModified_Access);
   function Create (timeLastModified : TimeLastModified_Access) return TimeLastModifiedView_Access;
   function toXmlNode (This : in out TimeLastModifiedView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out TimeLastModifiedView; document : Document_Access);
   function getTimeLastModified (This : in out TimeLastModifiedView) return TimeLastModified_Access;
   procedure getTimeLastModified (This : in out TimeLastModifiedView);
   procedure setTimeLastModified (This : in out TimeLastModifiedView; timeLastModified : TimeLastModified_Access);

end org.allbinary.business.time.modified.TimeLastModifiedView_Package;


