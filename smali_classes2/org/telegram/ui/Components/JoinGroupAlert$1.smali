.class Lorg/telegram/ui/Components/JoinGroupAlert$1;
.super Ljava/lang/Object;
.source "JoinGroupAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/JoinGroupAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/JoinGroupAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$1;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->dismiss()V

    return-void
.end method
