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


package body org.allbinary.game.configuration.GameOptionsFormFactory_Package is

   procedure Initialize_Fields (This : in out GameOptionsFormFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GameOptionsFormFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameOptionsFormFactory_Access is
      This : constant GameOptionsFormFactory_Access := new GameOptionsFormFactory;
   begin
      GameOptionsFormFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return GameOptionsFormFactory_Access is
   begin
        return GameOptionsFormFactory_Package.instance;
   end getInstance;

   function init (This : in out GameOptionsFormFactory; commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CommandForm_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return GameOptionsForm_Package.Create (commandListener, title, backgrounBasicColor, foregroundBasicColor);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.INIT, e);
            return CommandForm_Package.getNullCommandForm;
                end;
        end;
   end init;

   procedure init (This : in out GameOptionsFormFactory; commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      Java_Result : constant CommandForm_Access := GameOptionsFormFactory'Class (This).init (commandListener, title, backgrounBasicColor, foregroundBasicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end init;

begin
   null;
   instance := GameOptionsFormFactory_Package.Create;

end org.allbinary.game.configuration.GameOptionsFormFactory_Package;


