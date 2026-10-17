--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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


package body org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package is

   procedure Initialize_Fields (This : in out WebCommandProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.aboutCommandProcessor := AboutCommandProcessor_Package.getInstance;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out WebCommandProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WebCommandProcessor_Access is
      This : constant WebCommandProcessor_Access := new WebCommandProcessor;
   begin
      WebCommandProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WebCommandProcessor_Access is
   begin
        return WebCommandProcessor_Package.instance;
   end getInstance;

   procedure process (This : in out WebCommandProcessor; midletCommandListener : CommandListener_Access; command : Command_Access; canvas : Canvas_Access) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.list.removeAt (0);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.PROCESS, e);
                end;
        end;
   end process;

begin
   null;
   instance := WebCommandProcessor_Package.Create;

end org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package;


