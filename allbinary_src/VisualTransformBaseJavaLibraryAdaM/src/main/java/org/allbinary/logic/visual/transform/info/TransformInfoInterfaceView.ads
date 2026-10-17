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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoInterfaceView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TransformInfoInterfaceView is tagged;
   type TransformInfoInterfaceView_Access is access all TransformInfoInterfaceView'Class;
   type TransformInfoInterfaceView_Access_Array is array (Natural range <>) of TransformInfoInterfaceView_Access;
   type TransformInfoInterfaceView_Access_Array_Access is access all TransformInfoInterfaceView_Access_Array;

   type TransformInfoInterfaceView is new DomNodeInterface with record
      transformInfoInterface : TransformInfoInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoInterfaceView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return TransformInfoInterfaceView_Access;
   function toXmlNode (This : in out TransformInfoInterfaceView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out TransformInfoInterfaceView; document : Document_Access);

end org.allbinary.logic.visual.transform.info.TransformInfoInterfaceView_Package;


