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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping_Package; use org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping_Package;

package org.allbinary.logic.communication.java.vm.stats.JvmStatisticsView_Package is

   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type JvmStatisticsView is tagged;
   type JvmStatisticsView_Access is access all JvmStatisticsView'Class;
   type JvmStatisticsView_Access_Array is array (Natural range <>) of JvmStatisticsView_Access;
   type JvmStatisticsView_Access_Array_Access is access all JvmStatisticsView_Access_Array;

   type JvmStatisticsView is new JvmStatisticsMapping and DomNodeInterface with null record;

   procedure Initialize (This : in out JvmStatisticsView'Class);
   function Create return JvmStatisticsView_Access;
   function toXmlNode (This : in out JvmStatisticsView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out JvmStatisticsView; document : Document_Access);

end org.allbinary.logic.communication.java.vm.stats.JvmStatisticsView_Package;


