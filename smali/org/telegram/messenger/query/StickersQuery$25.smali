.class final Lorg/telegram/messenger/query/StickersQuery$25;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$hide:I

.field final synthetic val$showSettings:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(IILorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$type:I

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$hide:I

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p4, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$showSettings:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$25$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$25$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$25;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$25$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/query/StickersQuery$25$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$25;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
