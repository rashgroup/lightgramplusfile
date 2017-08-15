.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field final synthetic val$currentReqId:I

.field final synthetic val$max_id:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;II)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->val$max_id:I

    iput p3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->val$currentReqId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move v1, v2

    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->val$max_id:I

    if-eqz v4, :cond_0

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;->val$max_id:I

    if-le v4, v5, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1$1;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1$1;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
