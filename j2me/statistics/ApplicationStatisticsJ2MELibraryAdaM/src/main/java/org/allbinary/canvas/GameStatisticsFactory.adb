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



package body org.allbinary.canvas.GameStatisticsFactory_Package is

   procedure Initialize_Fields (This : in out GameStatisticsFactory'Class) is
   begin
      null;
      This.stringBuffer := StringMaker_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out GameStatisticsFactory'Class) is
   begin
      BaseGameStatistics_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return GameStatisticsFactory_Access is
      This : constant GameStatisticsFactory_Access := new GameStatisticsFactory;
   begin
      GameStatisticsFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameStatisticsFactory_Access is
   begin
        return GameStatisticsFactory_Package.instance;
   end getInstance;

   procedure add (This : in out GameStatisticsFactory; string_Id : Unbounded_String) is
   begin
        if (This.stringBuffer.length) > (12000) then
            This.stringBuffer.delete (0, This.stringBuffer.length);
            This.stringBuffer.append (To_Unbounded_String ("Old Stats Cleared"));
        end if;
        This.stringBuffer.append (string_Id);
   end add;

   function toString (This : in out GameStatisticsFactory) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (BaseGameStatistics (This).toString).append (This.stringBuffer.toString).toString;
   end toString;

begin
   null;
   instance := GameStatisticsFactory_Package.Create;

end org.allbinary.canvas.GameStatisticsFactory_Package;


