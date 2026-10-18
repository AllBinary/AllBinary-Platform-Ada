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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.graphics.j2me.workarea.KeyListener_Package; use org.allbinary.graphics.j2me.workarea.KeyListener_Package;

package org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type WorkAreaJPanelInterface is interface and KeyListener;
   type WorkAreaJPanelInterface_Access is access all WorkAreaJPanelInterface'Class;
   type WorkAreaJPanelInterface_Access_Array is array (Natural range <>) of WorkAreaJPanelInterface_Access;
   type WorkAreaJPanelInterface_Access_Array_Access is access all WorkAreaJPanelInterface_Access_Array;
   type WorkAreaJPanelInterface_Access_Array_Access_Array is array (Natural range <>) of WorkAreaJPanelInterface_Access_Array_Access;
   type WorkAreaJPanelInterface_Access_Array_Access_Array_Access is access all WorkAreaJPanelInterface_Access_Array_Access_Array;
   function getName (This : in out WorkAreaJPanelInterface) return Unbounded_String is abstract;
   procedure deselect (This : in out WorkAreaJPanelInterface) is abstract;
   procedure select_Id (This : in out WorkAreaJPanelInterface) is abstract;
   procedure changeZoom (This : in out WorkAreaJPanelInterface; factor : Integer) is abstract;
   procedure explodeAll (This : in out WorkAreaJPanelInterface) is abstract;
   procedure autoRotate (This : in out WorkAreaJPanelInterface; increments : Integer; totalAngle : Integer) is abstract;
   procedure autoExplode (This : in out WorkAreaJPanelInterface; numberOfFrames : Integer; explodeType : Integer) is abstract;
   procedure autoMirror (This : in out WorkAreaJPanelInterface) is abstract;
   procedure play (This : in out WorkAreaJPanelInterface) is abstract;
   procedure stop (This : in out WorkAreaJPanelInterface) is abstract;
   function isPlaying (This : in out WorkAreaJPanelInterface) return Boolean is abstract;
   function toDocument (This : in out WorkAreaJPanelInterface) return Document_Access is abstract;

end org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;


