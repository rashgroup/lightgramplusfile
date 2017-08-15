.class Lorg/telegram/ui/ProfileMaker$3$49;
.super Ljava/lang/Object;
.source "ProfileMaker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileMaker$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileMaker$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileMaker$3;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileMaker$3$49;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3$49;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    # invokes: Lorg/telegram/ui/ProfileMaker;->saveName3()V
    invoke-static {v0}, Lorg/telegram/ui/ProfileMaker;->access$200(Lorg/telegram/ui/ProfileMaker;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3$49;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0808c6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3$49;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileMaker;->finishFragment()V

    return-void
.end method
