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
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package; use org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.thread.ThreadFactoryUtil_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package DemoCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.DemoCanvas_Package;
   package GameCanvasRunnableInterface_Package renames Standard.org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
   package RunnableCanvasSingleThreadStartRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ThreadFactoryUtil is tagged;
   type ThreadFactoryUtil_Access is access all ThreadFactoryUtil'Class;
   type ThreadFactoryUtil_Access_Array is array (Natural range <>) of ThreadFactoryUtil_Access;
   type ThreadFactoryUtil_Access_Array_Access is access all ThreadFactoryUtil_Access_Array;

   type ThreadFactoryUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ThreadFactoryUtil_Access;

   procedure Initialize (This : in out ThreadFactoryUtil'Class);
   function Create return ThreadFactoryUtil_Access;
   function getInstance return ThreadFactoryUtil_Access;
   procedure getInstance;
   function getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable : GameCanvasRunnableInterface_Access) return Thread_Access;
   procedure getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable : GameCanvasRunnableInterface_Access);
   function getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable : ABRunnable_Access) return Thread_Access;
   procedure getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable : ABRunnable_Access);
   function getInstanceType (This : in out ThreadFactoryUtil; runnable : Runnable_Access; type_Id : Integer) return Thread_Access;
   procedure getInstanceType (This : in out ThreadFactoryUtil; runnable : Runnable_Access; type_Id : Integer);
   procedure start (This : in out ThreadFactoryUtil; thread : Thread_Access);

end org.allbinary.thread.ThreadFactoryUtil_Package;


