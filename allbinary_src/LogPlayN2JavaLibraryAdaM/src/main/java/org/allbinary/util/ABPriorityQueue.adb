-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package body org.allbinary.util.ABPriorityQueue_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   procedure Initialize_Fields (This : in out ABPriorityQueue'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABPriorityQueue'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ABPriorityQueue_Access is
      This : constant ABPriorityQueue_Access := new ABPriorityQueue;
   begin
      ABPriorityQueue_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.util.ABPriorityQueue_Package;


