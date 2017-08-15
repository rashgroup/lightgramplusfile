.class Lorg/telegram/messenger/MessagesController$64;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$64;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const/4 v3, -0x1

    if-nez p2, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$64;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    :cond_0
    return-void
.end method
