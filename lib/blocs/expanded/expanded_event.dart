part of 'expanded_bloc.dart';

abstract class ExpandedEvent extends Equatable {
  const ExpandedEvent();

  @override
  List<Object> get props => [];
}

class SetExpanded extends ExpandedEvent {
  final bool isExpanded;
  const SetExpanded({required this.isExpanded});
}
