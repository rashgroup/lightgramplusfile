.class final Lorg/telegram/messenger/query/StickersQuery$6;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$type:I

    iput-boolean p2, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$gif:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->gifs:Ljava/util/ArrayList;

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$type:I

    iget-boolean v2, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$gif:Z

    const/4 v3, 0x0

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
    invoke-static {v1, v0, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->access$600(ILjava/util/ArrayList;ZI)V

    return-void
.end method
