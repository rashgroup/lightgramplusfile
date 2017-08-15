.class Lorg/telegram/ui/CallLogActivity$5$1;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity$5;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CallLogActivity$5;

.field final synthetic val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity$5;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$5$1;->this$1:Lorg/telegram/ui/CallLogActivity$5;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$5$1;->val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$5$1;->this$1:Lorg/telegram/ui/CallLogActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$5$1;->val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;

    # invokes: Lorg/telegram/ui/CallLogActivity;->confirmAndDelete(Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/CallLogActivity;->access$300(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    return-void
.end method
