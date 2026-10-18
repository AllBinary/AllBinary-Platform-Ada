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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package CanvasDom_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type PointsDomUtil is tagged;
   type PointsDomUtil_Access is access all PointsDomUtil'Class;
   type PointsDomUtil_Access_Array is array (Natural range <>) of PointsDomUtil_Access;
   type PointsDomUtil_Access_Array_Access is access all PointsDomUtil_Access_Array;
   type PointsDomUtil_Access_Array_Access_Array is array (Natural range <>) of PointsDomUtil_Access_Array_Access;
   type PointsDomUtil_Access_Array_Access_Array_Access is access all PointsDomUtil_Access_Array_Access_Array;

   type PointsDomUtil is new Java_Object with record
      LINES : Unbounded_String;
      POINTONE : Unbounded_String;
      POINTTWO : Unbounded_String;
      ROTATEDPOINTONE : Unbounded_String;
      ROTATEDPOINTTWO : Unbounded_String;
      LINE : Unbounded_String;
   end record;
   instance : PointsDomUtil_Access;

   procedure Initialize (This : in out PointsDomUtil'Class);
   function Create return PointsDomUtil_Access;
   function getInstance return PointsDomUtil_Access;
   function toDom (This : in out PointsDomUtil; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Node_Access;
   procedure toDom (This : in out PointsDomUtil; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getPointNode (This : in out PointsDomUtil; point_Param : access GPoint_Package.GPoint'Class; pointName : Unbounded_String) return Node_Access;
   procedure getPointNode (This : in out PointsDomUtil; point_Param : access GPoint_Package.GPoint'Class; pointName : Unbounded_String);

end org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package;


