-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify


package body org.allbinary.game.multiplayer.layer.RemoteInfo_Package is

   procedure Initialize_Fields (This : in out RemoteInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RemoteInfo'Class; username : Unbounded_String; actorSessionId : Integer; playerInputId : Integer; id : Integer) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (username : Unbounded_String; actorSessionId : Integer; playerInputId : Integer; id : Integer) return RemoteInfo_Access is
      This : constant RemoteInfo_Access := new RemoteInfo;
   begin
      RemoteInfo_Package.Initialize (This.all, username, actorSessionId, playerInputId, id);
      return This;
   end Create;

begin
   null;
   NEW_PLAYER_ID := 0;
   REMOTE_INFO := RemoteInfo_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, -(1), -(1), RemoteInfo_Package.NEW_PLAYER_ID);

end org.allbinary.game.multiplayer.layer.RemoteInfo_Package;


