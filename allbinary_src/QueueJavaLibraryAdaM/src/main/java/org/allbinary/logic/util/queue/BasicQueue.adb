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


package body org.allbinary.logic.util.queue.BasicQueue_Package is

   procedure Initialize_Fields (This : in out BasicQueue'Class) is
   begin
      null;
      This.queueVector := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicQueue'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicQueue_Access is
      This : constant BasicQueue_Access := new BasicQueue;
   begin
      BasicQueue_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function offer (This : in out BasicQueue; anyType : Java_Object_Access) return Boolean is
   begin
        This.queueVector.add (anyType);
        return True;
   end offer;

   procedure remove (This : in out BasicQueue; anyType : Java_Object_Access) is
   begin
        This.queueVector.remove (anyType);
   end remove;

   function removeLast (This : in out BasicQueue) return Java_Object_Access is
      anyType : Java_Object_Access;
   begin
        anyType := This.queueVector.get ((This.queueVector.size) - (1));
        This.queueVector.remove (anyType);
        return anyType;
   end removeLast;

   procedure offer (This : in out BasicQueue; anyType : Java_Object_Access) is
      Java_Result : constant Boolean := BasicQueue'Class (This).offer (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end offer;

end org.allbinary.logic.util.queue.BasicQueue_Package;


