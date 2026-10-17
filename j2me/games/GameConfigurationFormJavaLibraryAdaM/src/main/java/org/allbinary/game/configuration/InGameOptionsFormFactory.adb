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


package body org.allbinary.game.configuration.InGameOptionsFormFactory_Package is

   procedure Initialize_Fields (This : in out InGameOptionsFormFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.SINGLETON := CommandForm_Package.getNullCommandForm;
   end Initialize_Fields;

   procedure Initialize (This : in out InGameOptionsFormFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InGameOptionsFormFactory_Access is
      This : constant InGameOptionsFormFactory_Access := new InGameOptionsFormFactory;
   begin
      InGameOptionsFormFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InGameOptionsFormFactory_Access is
   begin
        if (InGameOptionsFormFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            InGameOptionsFormFactory_Package.instance := InGameOptionsFormFactory_Package.Create;
        end if;
        return InGameOptionsFormFactory_Access (InGameOptionsFormFactory_Package.instance);
   end getInstance;

   procedure init (This : in out InGameOptionsFormFactory; commandListener : CommandListener_Access; initInterface : Init_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (This.SINGLETON) = (CommandForm_Package.getNullCommandForm) then
                initInterface.init;
                This.SINGLETON := InGameOptionsForm_Package.Create (commandListener, title, backgrounBasicColor, foregroundBasicColor);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.INIT, e);
                end;
        end;
   end init;

   function get (This : in out InGameOptionsFormFactory) return CommandForm_Access is
   begin
        return This.SINGLETON;
   end get;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.configuration.InGameOptionsFormFactory_Package;


