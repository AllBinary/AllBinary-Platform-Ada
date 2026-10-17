--  Generated Code Do Not Modify


package body org.allbinary.game.BasicGameInfoFactory_Package is

   procedure Initialize_Fields (This : in out BasicGameInfoFactory'Class) is
   begin
      null;
      This.currentReleaseIndex := 0;
      This.currentDestroyIndex := 0;
      This.total := 0;
   end Initialize_Fields;


   function getInstance return BasicGameInfoFactory_Access is
   begin
        return BasicGameInfoFactory_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out BasicGameInfoFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicGameInfoFactory_Access is
      This : constant BasicGameInfoFactory_Access := new BasicGameInfoFactory;
   begin
      BasicGameInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out BasicGameInfoFactory; total : Integer) is
   begin
        This.currentReleaseIndex := 0;
        This.currentDestroyIndex := 0;
        This.total := total;
   end init;

   function isPeaked (This : in out BasicGameInfoFactory) return Boolean is
   begin
        if (This.currentDestroyIndex) >= (This.total) then
            return True;
        else
            return False;
        end if;
   end isPeaked;

   function howManyLeft (This : in out BasicGameInfoFactory) return Integer is
   begin
        return (This.total) - (This.currentDestroyIndex);
   end howManyLeft;

begin
   null;
   SINGLETON := BasicGameInfoFactory_Package.Create;

end org.allbinary.game.BasicGameInfoFactory_Package;


