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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.logic.util.queue.BasicQueue_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out BasicQueue'Class) is
   begin
      null;
      This.queueVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
   function offer (This : in out BasicQueue; anyType_Param : access Java_Object'Class) return Boolean is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        This.queueVector.add (anyType);
        return True;
   end offer;

   procedure remove (This : in out BasicQueue; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
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

   procedure offer (This : in out BasicQueue; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := BasicQueue'Class (This).offer (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end offer;

   function offer (This : in out BasicQueue; Value : Unbounded_String) return Boolean is
   begin
      return BasicQueue'Class (This).offer (Java_Box (Value));
   end offer;

   procedure offer (This : in out BasicQueue; Value : Unbounded_String) is
      Java_Result : constant Boolean := BasicQueue'Class (This).offer (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end offer;

   procedure remove (This : in out BasicQueue; Value : Unbounded_String) is
   begin
      BasicQueue'Class (This).remove (Java_Box (Value));
   end remove;

end org.allbinary.logic.util.queue.BasicQueue_Package;


