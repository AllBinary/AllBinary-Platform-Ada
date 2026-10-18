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

package body org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out LogConfigTypes'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LogConfigTypes'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LogConfigTypes_Access is
      This : constant LogConfigTypes_Access := new LogConfigTypes;
   begin
      LogConfigTypes_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   LOGGING := BasicArrayList_Access (BasicArrayListD_Package.Create);

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;


