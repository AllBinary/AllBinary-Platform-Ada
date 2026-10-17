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


package body org.allbinary.view.event.ViewPositionEvent_Package is

   procedure Initialize_Fields (This : in out ViewPositionEvent'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ViewPositionEvent'Class; anyType : Java_Object_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
   end Initialize;

   function Create (anyType : Java_Object_Access) return ViewPositionEvent_Access is
      This : constant ViewPositionEvent_Access := new ViewPositionEvent;
   begin
      ViewPositionEvent_Package.Initialize (This.all, anyType);
      return This;
   end Create;

end org.allbinary.view.event.ViewPositionEvent_Package;


