.class Lorg/telegram/ui/Components/HsvSelectorView$3;
.super Ljava/lang/Object;
.source "HsvSelectorView.java"

# interfaces
.implements Lorg/telegram/ui/Components/HsvHueSelectorView$OnHueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HsvSelectorView;->buildUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HsvSelectorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HsvSelectorView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HsvSelectorView$3;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hueChanged(Lorg/telegram/ui/Components/HsvHueSelectorView;F)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView$3;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    # getter for: Lorg/telegram/ui/Components/HsvSelectorView;->hsvColorValueView:Lorg/telegram/ui/Components/HsvColorValueView;
    invoke-static {v0}, Lorg/telegram/ui/Components/HsvSelectorView;->access$300(Lorg/telegram/ui/Components/HsvSelectorView;)Lorg/telegram/ui/Components/HsvColorValueView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/HsvColorValueView;->setHue(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView$3;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    # getter for: Lorg/telegram/ui/Components/HsvSelectorView;->alphaSelector:Lorg/telegram/ui/Components/HsvAlphaSelectorView;
    invoke-static {v0}, Lorg/telegram/ui/Components/HsvSelectorView;->access$200(Lorg/telegram/ui/Components/HsvSelectorView;)Lorg/telegram/ui/Components/HsvAlphaSelectorView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvSelectorView$3;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/HsvSelectorView;->getCurrentColor(Z)I
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/HsvSelectorView;->access$000(Lorg/telegram/ui/Components/HsvSelectorView;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HsvAlphaSelectorView;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvSelectorView$3;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvSelectorView$3;->this$0:Lorg/telegram/ui/Components/HsvSelectorView;

    # invokes: Lorg/telegram/ui/Components/HsvSelectorView;->getCurrentColor(Z)I
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/HsvSelectorView;->access$000(Lorg/telegram/ui/Components/HsvSelectorView;Z)I

    move-result v1

    # invokes: Lorg/telegram/ui/Components/HsvSelectorView;->internalSetColor(IZ)V
    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Components/HsvSelectorView;->access$100(Lorg/telegram/ui/Components/HsvSelectorView;IZ)V

    return-void
.end method
