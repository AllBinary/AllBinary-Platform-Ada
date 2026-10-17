--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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


package body org.allbinary.android.input.motion.GameInputMotionInfo_Package is

   procedure Initialize_Fields (This : in out GameInputMotionInfo'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputMotionInfo'Class; maxApi : Integer; maxPointers : Integer) is
   begin
      Initialize_Fields (This);
        This.MAX_API := maxApi;
        This.MAX_POINTERS := maxPointers;
   end Initialize;

   function Create (maxApi : Integer; maxPointers : Integer) return GameInputMotionInfo_Access is
      This : constant GameInputMotionInfo_Access := new GameInputMotionInfo;
   begin
      GameInputMotionInfo_Package.Initialize (This.all, maxApi, maxPointers);
      return This;
   end Create;

end org.allbinary.android.input.motion.GameInputMotionInfo_Package;


