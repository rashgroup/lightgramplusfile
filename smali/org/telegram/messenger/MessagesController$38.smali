.class Lorg/telegram/messenger/MessagesController$38;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$did:J

.field final synthetic val$max_id_delete_final:I

.field final synthetic val$onlyHistory:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;JII)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$38;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$38;->val$did:J

    iput p4, p0, Lorg/telegram/messenger/MessagesController$38;->val$onlyHistory:I

    iput p5, p0, Lorg/telegram/messenger/MessagesController$38;->val$max_id_delete_final:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    const/4 v7, -0x1

    if-nez p2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->offset:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$38;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$38;->val$did:J

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/messenger/MessagesController$38;->val$onlyHistory:I

    iget v6, p0, Lorg/telegram/messenger/MessagesController$38;->val$max_id_delete_final:I

    # invokes: Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V
    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->access$3400(Lorg/telegram/messenger/MessagesController;JZII)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$38;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->pts:I

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->pts_count:I

    invoke-virtual {v0, v7, v1, v7, v2}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    :cond_1
    return-void
.end method
