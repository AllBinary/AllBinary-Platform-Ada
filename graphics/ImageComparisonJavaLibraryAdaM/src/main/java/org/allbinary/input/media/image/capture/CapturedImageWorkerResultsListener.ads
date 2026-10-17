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
with org.allbinary.logic.util.event.BasicEventListenerInterface_Package; use org.allbinary.logic.util.event.BasicEventListenerInterface_Package;

package org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package is

   package BasicEventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.BasicEventListenerInterface_Package;

   type CapturedImageWorkerResultsListener is interface and BasicEventListenerInterface;
   type CapturedImageWorkerResultsListener_Access is access all CapturedImageWorkerResultsListener'Class;
   type CapturedImageWorkerResultsListener_Access_Array is array (Natural range <>) of CapturedImageWorkerResultsListener_Access;
   type CapturedImageWorkerResultsListener_Access_Array_Access is access all CapturedImageWorkerResultsListener_Access_Array;
   procedure onCaptureEvent (This : in out CapturedImageWorkerResultsListener; capturedimageworkerresultsevent : CapturedImageWorkerResultsEvent_Access) is abstract;

end org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;


