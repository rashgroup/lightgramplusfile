.class Lorg/telegram/ui/ChannelUsersActivity$6$1$2;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$6$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # invokes: Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    invoke-static {v0, p1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # invokes: Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    invoke-static {v1, p2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
