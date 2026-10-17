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


package body org.allbinary.business.advertisement.BottomLimiter_Package is

   procedure Initialize_Fields (This : in out BottomLimiter'Class) is
   begin
      null;
      This.bottom := 0;
      This.deltaY := 0;
      This.lower := 0;
      This.higher := 0;
   end Initialize_Fields;


   function getInstance return BottomLimiter_Access is
   begin
        return BottomLimiter_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BottomLimiter'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BottomLimiter_Access is
      This : constant BottomLimiter_Access := new BottomLimiter;
   begin
      BottomLimiter_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out BottomLimiter; lower : Integer; higher : Integer) is
   begin
        This.lower := lower;
        This.higher := higher;
   end init;

   procedure update (This : in out BottomLimiter) is
      displayInfo : DisplayInfoSingleton_Access;
      gameAdState : GameAdState_Access;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        gameAdState := GameAdStateFactory_Package.getInstance.getCurrentInstance;
        if gameAdState.isShowingAt then
            This.deltaY := This.higher;
        else
            This.deltaY := This.lower;
        end if;
        This.bottom := (displayInfo.getLastHeight) - (This.deltaY);
   end update;

   function getDeltaY (This : in out BottomLimiter) return Integer is
   begin
        return This.deltaY;
   end getDeltaY;

   function getBottom (This : in out BottomLimiter) return Integer is
   begin
        return This.bottom;
   end getBottom;

begin
   null;
   instance := BottomLimiter_Package.Create;

end org.allbinary.business.advertisement.BottomLimiter_Package;


