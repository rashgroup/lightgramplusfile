.class Lorg/telegram/messenger/MessagesController$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
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
        "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$1;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_4

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-ge v0, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-le v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v4, v5, :cond_5

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    :goto_1
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v4

    if-eqz v4, :cond_6

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v5, v6, :cond_6

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    :goto_2
    if-ge v0, v4, :cond_7

    move v0, v1

    goto :goto_0

    :cond_5
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_1

    :cond_6
    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_2

    :cond_7
    if-le v0, v4, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0
.end method
